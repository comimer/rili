package androidx.appcompat.app;

import android.util.AttributeSet;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Deque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

class j
{
  private final Deque<WeakReference<XmlPullParser>> a = new ArrayDeque();
  
  private static boolean b(XmlPullParser paramXmlPullParser)
  {
    bool1 = true;
    bool2 = bool1;
    if (paramXmlPullParser != null) {
      bool2 = bool1;
    }
    try
    {
      if (paramXmlPullParser.getEventType() != 3)
      {
        int i = paramXmlPullParser.getEventType();
        if (i == 1) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
      }
    }
    catch (XmlPullParserException paramXmlPullParser)
    {
      for (;;)
      {
        bool2 = bool1;
      }
    }
    return bool2;
  }
  
  private static XmlPullParser c(Deque<WeakReference<XmlPullParser>> paramDeque)
  {
    while (!paramDeque.isEmpty())
    {
      XmlPullParser localXmlPullParser = (XmlPullParser)((WeakReference)paramDeque.peek()).get();
      if (b(localXmlPullParser)) {
        paramDeque.pop();
      } else {
        return localXmlPullParser;
      }
    }
    return null;
  }
  
  private static boolean d(XmlPullParser paramXmlPullParser1, XmlPullParser paramXmlPullParser2)
  {
    if ((paramXmlPullParser2 != null) && (paramXmlPullParser1 != paramXmlPullParser2)) {}
    try
    {
      if (paramXmlPullParser2.getEventType() == 2)
      {
        boolean bool = "include".equals(paramXmlPullParser2.getName());
        return bool;
      }
    }
    catch (XmlPullParserException paramXmlPullParser1)
    {
      label33:
      break label33;
    }
    return false;
  }
  
  boolean a(AttributeSet paramAttributeSet)
  {
    if ((paramAttributeSet instanceof XmlPullParser))
    {
      paramAttributeSet = (XmlPullParser)paramAttributeSet;
      if (paramAttributeSet.getDepth() == 1)
      {
        XmlPullParser localXmlPullParser = c(this.a);
        this.a.push(new WeakReference(paramAttributeSet));
        if (d(paramAttributeSet, localXmlPullParser)) {
          return true;
        }
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.j
 * JD-Core Version:    0.7.0.1
 */