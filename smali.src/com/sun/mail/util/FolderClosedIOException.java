package com.sun.mail.util;

import java.io.IOException;
import javax.mail.b;

public class FolderClosedIOException
  extends IOException
{
  private static final long serialVersionUID = 4281122580365555735L;
  private transient b folder;
  
  public FolderClosedIOException(b paramb)
  {
    this(paramb, null);
  }
  
  public FolderClosedIOException(b paramb, String paramString)
  {
    super(paramString);
    this.folder = paramb;
  }
  
  public b getFolder()
  {
    return this.folder;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.FolderClosedIOException
 * JD-Core Version:    0.7.0.1
 */