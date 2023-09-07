package androidx.work;

public enum ExistingWorkPolicy
{
  static
  {
    ExistingWorkPolicy localExistingWorkPolicy1 = new ExistingWorkPolicy("REPLACE", 0);
    REPLACE = localExistingWorkPolicy1;
    ExistingWorkPolicy localExistingWorkPolicy2 = new ExistingWorkPolicy("KEEP", 1);
    KEEP = localExistingWorkPolicy2;
    ExistingWorkPolicy localExistingWorkPolicy3 = new ExistingWorkPolicy("APPEND", 2);
    APPEND = localExistingWorkPolicy3;
    ExistingWorkPolicy localExistingWorkPolicy4 = new ExistingWorkPolicy("APPEND_OR_REPLACE", 3);
    APPEND_OR_REPLACE = localExistingWorkPolicy4;
    $VALUES = new ExistingWorkPolicy[] { localExistingWorkPolicy1, localExistingWorkPolicy2, localExistingWorkPolicy3, localExistingWorkPolicy4 };
  }
  
  private ExistingWorkPolicy() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.ExistingWorkPolicy
 * JD-Core Version:    0.7.0.1
 */