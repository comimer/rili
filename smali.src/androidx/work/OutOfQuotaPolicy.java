package androidx.work;

public enum OutOfQuotaPolicy
{
  static
  {
    OutOfQuotaPolicy localOutOfQuotaPolicy1 = new OutOfQuotaPolicy("RUN_AS_NON_EXPEDITED_WORK_REQUEST", 0);
    RUN_AS_NON_EXPEDITED_WORK_REQUEST = localOutOfQuotaPolicy1;
    OutOfQuotaPolicy localOutOfQuotaPolicy2 = new OutOfQuotaPolicy("DROP_WORK_REQUEST", 1);
    DROP_WORK_REQUEST = localOutOfQuotaPolicy2;
    $VALUES = new OutOfQuotaPolicy[] { localOutOfQuotaPolicy1, localOutOfQuotaPolicy2 };
  }
  
  private OutOfQuotaPolicy() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.OutOfQuotaPolicy
 * JD-Core Version:    0.7.0.1
 */