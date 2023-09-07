package androidx.constraintlayout.core.state;

import java.util.ArrayList;

class ConstraintReference$IncorrectConstraintException
  extends Exception
{
  private final ArrayList<String> mErrors;
  
  public ConstraintReference$IncorrectConstraintException(ArrayList<String> paramArrayList)
  {
    this.mErrors = paramArrayList;
  }
  
  public ArrayList<String> getErrors()
  {
    return this.mErrors;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("IncorrectConstraintException: ");
    localStringBuilder.append(this.mErrors.toString());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.state.ConstraintReference.IncorrectConstraintException
 * JD-Core Version:    0.7.0.1
 */