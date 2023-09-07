package at.bitfire.dav4jvm;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import okhttp3.a0;
import org.apache.commons.lang3.time.DateUtils;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/HttpUtils;", "", "Lokhttp3/t;", "url", "", "fileName", "Lokhttp3/a0;", "response", "name", "", "listHeader", "(Lokhttp3/a0;Ljava/lang/String;)[Ljava/lang/String;", "Ljava/util/Date;", "date", "formatDate", "dateStr", "parseDate", "httpDateFormatStr", "Ljava/lang/String;", "Ljava/text/SimpleDateFormat;", "httpDateFormat", "Ljava/text/SimpleDateFormat;", "getHttpDateFormat", "()Ljava/text/SimpleDateFormat;", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
public final class HttpUtils
{
  public static final HttpUtils INSTANCE = new HttpUtils();
  private static final SimpleDateFormat httpDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'");
  public static final String httpDateFormatStr = "EEE, dd MMM yyyy HH:mm:ss 'GMT'";
  
  public final String fileName(okhttp3.t paramt)
  {
    r.g(paramt, "url");
    paramt = paramt.m();
    return (String)paramt.get(paramt.size() - 1);
  }
  
  public final String formatDate(Date paramDate)
  {
    r.g(paramDate, "date");
    paramDate = httpDateFormat.format(paramDate);
    r.b(paramDate, "httpDateFormat.format(date)");
    return paramDate;
  }
  
  public final SimpleDateFormat getHttpDateFormat()
  {
    return httpDateFormat;
  }
  
  public final String[] listHeader(a0 parama0, String paramString)
  {
    r.g(parama0, "response");
    r.g(paramString, "name");
    paramString = k.r0(kotlin.collections.t.h0(parama0.E(paramString), ",", null, null, 0, null, null, 62, null), new char[] { ',' }, false, 0, 6, null);
    parama0 = new ArrayList();
    paramString = paramString.iterator();
    while (paramString.hasNext())
    {
      Object localObject = paramString.next();
      int i;
      if (((String)localObject).length() > 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0) {
        parama0.add(localObject);
      }
    }
    parama0 = parama0.toArray(new String[0]);
    if (parama0 != null) {
      return (String[])parama0;
    }
    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
  }
  
  public final Date parseDate(String paramString)
  {
    r.g(paramString, "dateStr");
    try
    {
      Date localDate = DateUtils.b(paramString, new String[] { "EEE, dd MMM yyyy HH:mm:ss 'GMT'", "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" });
      paramString = localDate;
    }
    catch (ParseException localParseException)
    {
      Logger localLogger = Dav4jvm.INSTANCE.getLog();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Couldn't parse date: ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(", ignoring");
      localLogger.warning(localStringBuilder.toString());
      paramString = null;
    }
    return paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.HttpUtils
 * JD-Core Version:    0.7.0.1
 */