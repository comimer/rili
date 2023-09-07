package com.sun.mail.imap;

import javax.mail.Message;
import javax.mail.b;
import javax.mail.event.MessageCountEvent;

public class MessageVanishedEvent
  extends MessageCountEvent
{
  private static final Message[] noMessages = new Message[0];
  private static final long serialVersionUID = 2142028010250024922L;
  private long[] uids;
  
  public MessageVanishedEvent(b paramb, long[] paramArrayOfLong)
  {
    super(paramb, 2, true, noMessages);
    this.uids = paramArrayOfLong;
  }
  
  public long[] getUIDs()
  {
    return this.uids;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.MessageVanishedEvent
 * JD-Core Version:    0.7.0.1
 */