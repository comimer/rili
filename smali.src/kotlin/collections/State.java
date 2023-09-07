package kotlin.collections;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/collections/State;", "", "(Ljava/lang/String;I)V", "Ready", "NotReady", "Done", "Failed", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
 enum State
{
  static
  {
    NotReady = new State("NotReady", 1);
    Done = new State("Done", 2);
    Failed = new State("Failed", 3);
  }
  
  private State() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.State
 * JD-Core Version:    0.7.0.1
 */