package androidx.databinding;

abstract class b
  extends a
{
  public b() {}
  
  public b(j... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length != 0))
    {
      a locala = new a();
      for (int i = 0; i < paramVarArgs.length; i++) {
        paramVarArgs[i].addOnPropertyChangedCallback(locala);
      }
    }
  }
  
  class a
    extends j.a
  {
    a() {}
    
    public void d(j paramj, int paramInt)
    {
      b.this.notifyChange();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.b
 * JD-Core Version:    0.7.0.1
 */