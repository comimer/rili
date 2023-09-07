package javax.mail.search;

import javax.mail.Message;

public final class AndTerm
  extends SearchTerm
{
  private static final long serialVersionUID = -3583274505380989582L;
  private SearchTerm[] terms;
  
  public AndTerm(SearchTerm paramSearchTerm1, SearchTerm paramSearchTerm2)
  {
    SearchTerm[] arrayOfSearchTerm = new SearchTerm[2];
    this.terms = arrayOfSearchTerm;
    arrayOfSearchTerm[0] = paramSearchTerm1;
    arrayOfSearchTerm[1] = paramSearchTerm2;
  }
  
  public AndTerm(SearchTerm[] paramArrayOfSearchTerm)
  {
    this.terms = new SearchTerm[paramArrayOfSearchTerm.length];
    for (int i = 0; i < paramArrayOfSearchTerm.length; i++) {
      this.terms[i] = paramArrayOfSearchTerm[i];
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AndTerm)) {
      return false;
    }
    paramObject = (AndTerm)paramObject;
    if (paramObject.terms.length != this.terms.length) {
      return false;
    }
    for (int i = 0;; i++)
    {
      SearchTerm[] arrayOfSearchTerm = this.terms;
      if (i >= arrayOfSearchTerm.length) {
        break;
      }
      if (!arrayOfSearchTerm[i].equals(paramObject.terms[i])) {
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
      if (!arrayOfSearchTerm[i].match(paramMessage)) {
        return false;
      }
    }
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.AndTerm
 * JD-Core Version:    0.7.0.1
 */