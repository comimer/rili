package androidx.loader.content;

public enum ModernAsyncTask$Status
{
  static
  {
    Status localStatus1 = new Status("PENDING", 0);
    PENDING = localStatus1;
    Status localStatus2 = new Status("RUNNING", 1);
    RUNNING = localStatus2;
    Status localStatus3 = new Status("FINISHED", 2);
    FINISHED = localStatus3;
    $VALUES = new Status[] { localStatus1, localStatus2, localStatus3 };
  }
  
  private ModernAsyncTask$Status() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.loader.content.ModernAsyncTask.Status
 * JD-Core Version:    0.7.0.1
 */