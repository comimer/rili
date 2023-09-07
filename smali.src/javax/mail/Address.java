package javax.mail;

import java.io.Serializable;

public abstract class Address
  implements Serializable
{
  private static final long serialVersionUID = -5822459626751992278L;
  
  public abstract boolean equals(Object paramObject);
  
  public abstract String getType();
  
  public abstract String toString();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.Address
 * JD-Core Version:    0.7.0.1
 */