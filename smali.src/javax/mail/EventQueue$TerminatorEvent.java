package javax.mail;

import javax.mail.event.MailEvent;

class EventQueue$TerminatorEvent
  extends MailEvent
{
  private static final long serialVersionUID = -2481895000841664111L;
  
  EventQueue$TerminatorEvent()
  {
    super(new Object());
  }
  
  public void dispatch(Object paramObject)
  {
    Thread.currentThread().interrupt();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.EventQueue.TerminatorEvent
 * JD-Core Version:    0.7.0.1
 */