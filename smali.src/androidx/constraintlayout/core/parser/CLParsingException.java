package androidx.constraintlayout.core.parser;

public class CLParsingException
  extends Exception
{
  private final String mElementClass;
  private final int mLineNumber;
  private final String mReason;
  
  public CLParsingException(String paramString, a parama)
  {
    this.mReason = paramString;
    this.mElementClass = "unknown";
    this.mLineNumber = 0;
  }
  
  public String reason()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mReason);
    localStringBuilder.append(" (");
    localStringBuilder.append(this.mElementClass);
    localStringBuilder.append(" at line ");
    localStringBuilder.append(this.mLineNumber);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CLParsingException (");
    localStringBuilder.append(hashCode());
    localStringBuilder.append(") : ");
    localStringBuilder.append(reason());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.parser.CLParsingException
 * JD-Core Version:    0.7.0.1
 */