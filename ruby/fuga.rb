class Genes
  def initialize(gene_count=10, quiz_count=10)
    @generation = 1
    @quiz = Quiz.new(quiz_count)
    while max == quiz_count
      @genes = []
      gene_count.times { |i| @genes << Gene.new(quiz_count) }
      mark()
      sort()
    end
  end

  def start
    while max < @quiz.count
      yield(@generation, @genes, max, min, average)
      next_genration()
      mark()
      sort()
    end
    yield(@generation, @genes, max, min, average) #追加(2007-11-09) 変更(2008-01-30)
  end

  def mark
    @genes.length.times { |i| @genes[i].score = @quiz.mark(@genes[i].ans) }
  end

  def sort
    @genes.sort! { |a, b| a.score <=> b.score }.reverse!
  end

  def next_genration
    @generation += 1
    pair = []
    pair << @genes[0]
    pair << @genes[1]
    pair = breed(pair)
    @genes[@genes.length - 2] = pair[0]
    @genes[@genes.length - 1] = pair[1]
  end

  def breed(parents)
    c = parents[0].count
    children = [Gene.new(c), Gene.new(c)]
    cross = rand(c - 1)
    c.times do |i|
      n = (i < cross) ? 0 : 1
      children[0].ans[i] = parents[(0+n)%2].ans[i]
      children[1].ans[i] = parents[(1+n)%2].ans[i]
    end

    mutation = rand(c)
    children[0].ans[mutation] = rand(3) if mutation < c
    mutation = rand(c)
    children[1].ans[mutation] = rand(3) if mutation < c
    children
  end

  def max
    @genes ? @genes[0].score : @quiz.count
  end

  def min
    @genes ? @genes[(@genes.length - 1)].score : 0
  end

  def average
    sum = 0
    @genes.each { |x| sum += x.score }
    sum / @genes.length
  end
end

class Gene
  def initialize(count)
    @count = count
    @ans = []
    @count.times { |i| @ans << rand(3) }
  end

  attr_accessor :score
  attr_reader :ans
  attr_reader :count
end

class Quiz < Gene
  def mark(ans)
    score = 0
    @count.times { |i| score += 1 if @ans[i] == ans[i] }
    score
  end
end

#--------------------------------
g = Genes.new
g.start do |generation, genes, max, min, average|
  p generation
  p max
  10.times do |i|
    p genes[i].ans
  end
  break if gets =~ /x/
end
