VALUE rb_obj_hash(VALUE obj)
{
  VALUE oid = rb_obj_id(obj);
#if SIZEOF_LONG == SIZEOF_VOIDP
  st_index_t index = NUM2LONG(oid);
#elif SIZEOF_LONG_LONG == SIZEOF_VOIDP
  st_index_t index = NUM2LL(oid);
#else
# error not supported
#endif
  st_index_t h = rb_hash_end(rb_hash_start(index));
  return LONG2FIX(h);
}
