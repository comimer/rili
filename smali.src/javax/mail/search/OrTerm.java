package javax.mail.search;

import javax.mail.Message;

public final class OrTerm
  extends SearchTerm
{
  private static final long serialVersionUID = 5380534067523646936L;
  private SearchTerm[] terms;
  
  public OrTerm(SearchTerm paramSearchTerm1, SearchTerm paramSearchTerm2)
  {
    SearchTerm[] arrayOfSearchTerm = new SearchTerm[2];
    this.terms = arrayOfSearchTerm;
    arrayOfSearchTerm[0] = paramSearchTerm1;
    arrayOfSearchTerm[1] = paramSearchTerm2;
  }
  
  public OrTerm(SearchTerm[] paramArrayOfSearchTerm)
  {
    this.terms = new SearchTerm[paramArrayOfSearchTerm.length];
    for (int i = 0; i < paramArrayOfSearchTerm.length; i++) {
      this.terms[i] = paramArrayOfSearchTerm[i];
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof OrTerm)) {
      return false;
    }
    OrTerm localOrTerm = (OrTerm)paramObject;
    if (localOrTerm.terms.length != this.terms.length) {
      return false;
    }
    for (int i = 0;; i++)
    {
      paramObject = this.terms;
      if (i >= paramObject.length) {
        break;
      }
      if (!paramObject[i].equals(localOrTerm.terms[i])) {
        return false;
      }
    }
    return true;
  }
  
  public SearchTerm[] getTerms()
  {
    return (SearchTerm[])this.terms.clone();
  }
  
  public int hashCode()
  {
    int i = 0;
    int j = 0;
    for (;;)
    {
      SearchTerm[] arrayOfSearchTerm = this.terms;
      if (i >= arrayOfSearchTerm.length) {
        break;
      }
      j += arrayOfSearchTerm[i].hashCode();
      i++;
    }
    return j;
  }
  
  public boolean match(Message paramMessage)
  {
    for (int i = 0;; i++)
    {
      SearchTerm[] arrayOfSearchTerm = this.terms;
      if (i >= arrayOfSearchTerm.length) {
        break;
      }
      if (arrayOfSearchTerm[i].match(paramMessage)) {
        return true;
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.OrTerm
 * JD-Core Version:    0.7.0.1
 */