package androidx.work;

public enum ExistingPeriodicWorkPolicy
{
  static
  {
    ExistingPeriodicWorkPolicy localExistingPeriodicWorkPolicy1 = new ExistingPeriodicWorkPolicy("REPLACE", 0);
    REPLACE = localExistingPeriodicWorkPolicy1;
    ExistingPeriodicWorkPolicy localExistingPeriodicWorkPolicy2 = new ExistingPeriodicWorkPolicy("KEEP", 1);
    KEEP = localExistingPeriodicWorkPolicy2;
    $VALUES = new ExistingPeriodicWorkPolicy[] { localExistingPeriodicWorkPolicy1, localExistingPeriodicWorkPolicy2 };
  }
  
  private ExistingPeriodicWorkPolicy() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.ExistingPeriodicWorkPolicy
 * JD-Core Version:    0.7.0.1
 */