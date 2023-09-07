package androidx.work;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class OverwritingInputMerger
  extends h
{
  public d b(List<d> paramList)
  {
    d.a locala = new d.a();
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localHashMap.putAll(((d)paramList.next()).h());
    }
    locala.c(localHashMap);
    return locala.a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.OverwritingInputMerger
 * JD-Core Version:    0.7.0.1
 */