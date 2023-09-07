package javax.mail;

import java.util.Vector;

public abstract class d
{
  protected Vector<a> a = new Vector();
  protected String b = "multipart/mixed";
  
  public void a(a parama)
    throws MessagingException
  {
    try
    {
      if (this.a == null)
      {
        Vector localVector = new java/util/Vector;
        localVector.<init>();
        this.a = localVector;
      }
      this.a.addElement(parama);
      parama.h(this);
      return;
    }
    finally {}
  }
  
  public a b(int paramInt)
    throws MessagingException
  {
    try
    {
      Object localObject1 = this.a;
      if (localObject1 != null)
      {
        localObject1 = (a)((Vector)localObject1).elementAt(paramInt);
        return localObject1;
      }
      localObject1 = new java/lang/IndexOutOfBoundsException;
      ((IndexOutOfBoundsException)localObject1).<init>("No such BodyPart");
      throw ((Throwable)localObject1);
    }
    finally {}
  }
  
  public int c()
    throws MessagingException
  {
    try
    {
      Vector localVector = this.a;
      if (localVector == null) {
        return 0;
      }
      int i = localVector.size();
      return i;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.d
 * JD-Core Version:    0.7.0.1
 */