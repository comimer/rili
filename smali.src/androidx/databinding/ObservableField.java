package androidx.databinding;

import java.io.Serializable;

public class ObservableField<T>
  extends b
  implements Serializable
{
  static final long serialVersionUID = 1L;
  private T mValue;
  
  public ObservableField() {}
  
  public ObservableField(T paramT)
  {
    this.mValue = paramT;
  }
  
  public ObservableField(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public T get()
  {
    return this.mValue;
  }
  
  public void set(T paramT)
  {
    if (paramT != this.mValue)
    {
      this.mValue = paramT;
      notifyChange();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableField
 * JD-Core Version:    0.7.0.1
 */