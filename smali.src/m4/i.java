package m4;

import android.content.Context;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.sms.SmartMessage.OntologyType;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.HashMap;

public class i
{
  public h a(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    int i;
    switch (a.a[paramSmartMessage.getOntologyType().ordinal()])
    {
    default: 
      z.n("Cal:D:SmsModelFactory", "build(): unknown sms type");
      return null;
    case 8: 
      paramSmartMessage = new f(paramContext, paramSmartMessage, paramString);
      i = 16;
      break;
    case 7: 
      paramSmartMessage = new e(paramContext, paramSmartMessage, paramString);
      i = 15;
      break;
    case 6: 
      paramSmartMessage = new d(paramContext, paramSmartMessage, paramString);
      i = 14;
      break;
    case 5: 
      paramSmartMessage = new b(paramContext, paramSmartMessage, paramString);
      i = 13;
      break;
    case 4: 
      paramSmartMessage = new g(paramContext, paramSmartMessage, paramString);
      i = 17;
      break;
    case 3: 
      paramSmartMessage = new j(paramContext, paramSmartMessage, paramString);
      i = 12;
      break;
    case 2: 
      paramSmartMessage = new c(paramContext, paramSmartMessage, paramString);
      i = 11;
      break;
    case 1: 
      paramSmartMessage = new a(paramContext, paramSmartMessage, paramString);
      i = 3;
    }
    paramSmartMessage.g(com.android.calendar.settings.j.p(paramContext, i));
    return paramSmartMessage;
  }
  
  public void b(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    h localh = a(paramContext, paramSmartMessage, paramString);
    int i = paramSmartMessage.getCardID();
    if (!paramSmartMessage.getOntologyType().equals(SmartMessage.OntologyType.UNKNOWN))
    {
      paramString = new HashMap();
      paramString.put("card_id", String.valueOf(i));
      paramString.put("ontology_type", String.valueOf(paramSmartMessage.getOntologyType()));
      g0.e("sms_received", paramString);
    }
    if ((localh != null) && (com.android.calendar.settings.j.a(paramContext, paramSmartMessage.getOntologyType())) && (localh.c()) && (!localh.b())) {
      localh.f();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.i
 * JD-Core Version:    0.7.0.1
 */