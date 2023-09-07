package androidx.work;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public final class WorkInfo
{
  private UUID a;
  private State b;
  private d c;
  private Set<String> d;
  private d e;
  private int f;
  
  public WorkInfo(UUID paramUUID, State paramState, d paramd1, List<String> paramList, d paramd2, int paramInt)
  {
    this.a = paramUUID;
    this.b = paramState;
    this.c = paramd1;
    this.d = new HashSet(paramList);
    this.e = paramd2;
    this.f = paramInt;
  }
  
  public State a()
  {
    return this.b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (WorkInfo.class == paramObject.getClass()))
    {
      paramObject = (WorkInfo)paramObject;
      if (this.f != paramObject.f) {
        return false;
      }
      if (!this.a.equals(paramObject.a)) {
        return false;
      }
      if (this.b != paramObject.b) {
        return false;
      }
      if (!this.c.equals(paramObject.c)) {
        return false;
      }
      if (!this.d.equals(paramObject.d)) {
        return false;
      }
      return this.e.equals(paramObject.e);
    }
    return false;
  }
  
  public int hashCode()
  {
    return ((((this.a.hashCode() * 31 + this.b.hashCode()) * 31 + this.c.hashCode()) * 31 + this.d.hashCode()) * 31 + this.e.hashCode()) * 31 + this.f;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("WorkInfo{mId='");
    localStringBuilder.append(this.a);
    localStringBuilder.append('\'');
    localStringBuilder.append(", mState=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", mOutputData=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", mTags=");
    localStringBuilder.append(this.d);
    localStringBuilder.append(", mProgress=");
    localStringBuilder.append(this.e);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static enum State
  {
    static
    {
      State localState1 = new State("ENQUEUED", 0);
      ENQUEUED = localState1;
      State localState2 = new State("RUNNING", 1);
      RUNNING = localState2;
      State localState3 = new State("SUCCEEDED", 2);
      SUCCEEDED = localState3;
      State localState4 = new State("FAILED", 3);
      FAILED = localState4;
      State localState5 = new State("BLOCKED", 4);
      BLOCKED = localState5;
      State localState6 = new State("CANCELLED", 5);
      CANCELLED = localState6;
      $VALUES = new State[] { localState1, localState2, localState3, localState4, localState5, localState6 };
    }
    
    private State() {}
    
    public boolean isFinished()
    {
      boolean bool;
      if ((this != SUCCEEDED) && (this != FAILED) && (this != CANCELLED)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.WorkInfo
 * JD-Core Version:    0.7.0.1
 */