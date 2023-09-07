package androidx.databinding;

import java.util.List;

public abstract interface k<T>
  extends List<T>
{
  public abstract void addOnListChangedCallback(a<? extends k<T>> parama);
  
  public abstract void removeOnListChangedCallback(a<? extends k<T>> parama);
  
  public static abstract class a<T extends k>
  {
    public abstract void d(T paramT);
    
    public abstract void e(T paramT, int paramInt1, int paramInt2);
    
    public abstract void f(T paramT, int paramInt1, int paramInt2);
    
    public abstract void g(T paramT, int paramInt1, int paramInt2, int paramInt3);
    
    public abstract void h(T paramT, int paramInt1, int paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.k
 * JD-Core Version:    0.7.0.1
 */