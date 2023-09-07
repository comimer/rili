package androidx.core.os;

import androidx.core.util.c;

public class OperationCanceledException
  extends RuntimeException
{
  public OperationCanceledException()
  {
    this(null);
  }
  
  public OperationCanceledException(String paramString)
  {
    super(c.e(paramString, "The operation has been canceled."));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.OperationCanceledException
 * JD-Core Version:    0.7.0.1
 */