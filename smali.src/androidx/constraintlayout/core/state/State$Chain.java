package androidx.constraintlayout.core.state;

public enum State$Chain
{
  static
  {
    Chain localChain1 = new Chain("SPREAD", 0);
    SPREAD = localChain1;
    Chain localChain2 = new Chain("SPREAD_INSIDE", 1);
    SPREAD_INSIDE = localChain2;
    Chain localChain3 = new Chain("PACKED", 2);
    PACKED = localChain3;
    $VALUES = new Chain[] { localChain1, localChain2, localChain3 };
  }
  
  private State$Chain() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.state.State.Chain
 * JD-Core Version:    0.7.0.1
 */