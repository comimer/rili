package javax.mail.search;

import javax.mail.Message;

public final class NotTerm
  extends SearchTerm
{
  private static final long serialVersionUID = 7152293214217310216L;
  private SearchTerm term;
  
  public NotTerm(SearchTerm paramSearchTerm)
  {
    this.term = paramSearchTerm;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof NotTerm)) {
      return false;
    }
    return ((NotTerm)paramObject).term.equals(this.term);
  }
  
  public SearchTerm getTerm()
  {
    return this.term;
  }
  
  public int hashCode()
  {
    return this.term.hashCode() << 1;
  }
  
  public boolean match(Message paramMessage)
  {
    return this.term.match(paramMessage) ^ true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.NotTerm
 * JD-Core Version:    0.7.0.1
 */