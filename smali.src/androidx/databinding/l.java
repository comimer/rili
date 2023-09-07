package androidx.databinding;

import java.util.Map;

public abstract interface l<K, V>
  extends Map<K, V>
{
  public abstract void a(a<? extends l<K, V>, K, V> parama);
  
  public abstract void b(a<? extends l<K, V>, K, V> parama);
  
  public static abstract class a<T extends l<K, V>, K, V> {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.l
 * JD-Core Version:    0.7.0.1
 */