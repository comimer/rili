package androidx.work;

public enum BackoffPolicy
{
  static
  {
    BackoffPolicy localBackoffPolicy1 = new BackoffPolicy("EXPONENTIAL", 0);
    EXPONENTIAL = localBackoffPolicy1;
    BackoffPolicy localBackoffPolicy2 = new BackoffPolicy("LINEAR", 1);
    LINEAR = localBackoffPolicy2;
    $VALUES = new BackoffPolicy[] { localBackoffPolicy1, localBackoffPolicy2 };
  }
  
  private BackoffPolicy() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.BackoffPolicy
 * JD-Core Version:    0.7.0.1
 */