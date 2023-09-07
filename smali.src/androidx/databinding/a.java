package androidx.databinding;

public class a
  implements j
{
  private transient o mCallbacks;
  
  public void addOnPropertyChangedCallback(j.a parama)
  {
    try
    {
      if (this.mCallbacks == null)
      {
        o localo = new androidx/databinding/o;
        localo.<init>();
        this.mCallbacks = localo;
      }
      this.mCallbacks.a(parama);
      return;
    }
    finally {}
  }
  
  public void notifyChange()
  {
    try
    {
      o localo = this.mCallbacks;
      if (localo == null) {
        return;
      }
      localo.e(this, 0, null);
      return;
    }
    finally {}
  }
  
  public void notifyPropertyChanged(int paramInt)
  {
    try
    {
      o localo = this.mCallbacks;
      if (localo == null) {
        return;
      }
      localo.e(this, paramInt, null);
      return;
    }
    finally {}
  }
  
  public void removeOnPropertyChangedCallback(j.a parama)
  {
    try
    {
      o localo = this.mCallbacks;
      if (localo == null) {
        return;
      }
      localo.k(parama);
      return;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.a
 * JD-Core Version:    0.7.0.1
 */