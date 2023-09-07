package x3;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract.ExtendedProperties;

public class a
{
  public static final Uri a = CalendarContract.ExtendedProperties.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_miui_calendar", Boolean.toString(true)).build();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x3.a
 * JD-Core Version:    0.7.0.1
 */