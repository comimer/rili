package at.bitfire.ical4android;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import jc.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.i;
import net.fortuna.ical4j.model.Calendar;
import net.fortuna.ical4j.model.Component;
import net.fortuna.ical4j.model.Property;
import net.fortuna.ical4j.model.component.CalendarComponent;
import net.fortuna.ical4j.transform.rfc5545.CreatedPropertyRule;
import net.fortuna.ical4j.transform.rfc5545.DateListPropertyRule;
import net.fortuna.ical4j.transform.rfc5545.DatePropertyRule;
import net.fortuna.ical4j.transform.rfc5545.Rfc5545PropertyRule;
import net.fortuna.ical4j.transform.rfc5545.Rfc5545Rule;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/ICalPreprocessor;", "", "Lnet/fortuna/ical4j/model/Property;", "property", "Lkotlin/u;", "applyRules", "Ljava/io/Reader;", "reader", "fixInvalidUtcOffset", "Lnet/fortuna/ical4j/model/Calendar;", "calendar", "preProcess", "Lkotlin/text/Regex;", "TZOFFSET_REGEXP", "Lkotlin/text/Regex;", "", "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;", "kotlin.jvm.PlatformType", "propertyRules", "[Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;", "<init>", "()V", "ical4android_release"}, k=1, mv={1, 7, 1})
public final class ICalPreprocessor
{
  public static final ICalPreprocessor INSTANCE = new ICalPreprocessor();
  private static final Regex TZOFFSET_REGEXP = new Regex("^(TZOFFSET(FROM|TO):[+\\-]?)((18|19|[2-6]\\d)\\d\\d)$", RegexOption.MULTILINE);
  private static final Rfc5545PropertyRule<? extends Property>[] propertyRules = { new CreatedPropertyRule(), new DatePropertyRule(), new DateListPropertyRule() };
  
  private final void applyRules(Property paramProperty)
  {
    Object localObject1 = propertyRules;
    Object localObject2 = new ArrayList();
    int i = localObject1.length;
    Object localObject3;
    for (int j = 0; j < i; j++)
    {
      localObject3 = localObject1[j];
      if (((Rfc5545Rule)localObject3).getSupportedType().isAssignableFrom(paramProperty.getClass())) {
        ((Collection)localObject2).add(localObject3);
      }
    }
    localObject2 = ((Iterable)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Rfc5545PropertyRule localRfc5545PropertyRule = (Rfc5545PropertyRule)((Iterator)localObject2).next();
      localObject1 = Ical4Android.INSTANCE;
      Logger localLogger = ((Ical4Android)localObject1).getLog();
      localObject3 = Level.FINER;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Applying rules to ");
      localStringBuilder.append(paramProperty);
      localLogger.log((Level)localObject3, localStringBuilder.toString());
      r.d(localRfc5545PropertyRule, "null cannot be cast to non-null type net.fortuna.ical4j.transform.rfc5545.Rfc5545PropertyRule<net.fortuna.ical4j.model.Property>");
      localRfc5545PropertyRule.applyTo(paramProperty);
      localObject1 = ((Ical4Android)localObject1).getLog();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("-> ");
      localStringBuilder.append(paramProperty);
      ((Logger)localObject1).log((Level)localObject3, localStringBuilder.toString());
    }
  }
  
  private static final String fixInvalidUtcOffset$fixStringFromReader(Reader paramReader)
  {
    paramReader = b.d(paramReader);
    r.e(paramReader, "toString(reader)");
    return TZOFFSET_REGEXP.replace(paramReader, fixInvalidUtcOffset.fixStringFromReader.1.INSTANCE);
  }
  
  public final Reader fixInvalidUtcOffset(Reader paramReader)
  {
    r.f(paramReader, "reader");
    int i;
    try
    {
      paramReader.reset();
      i = 1;
    }
    catch (IOException localIOException)
    {
      i = 0;
    }
    String str;
    if (i != 0)
    {
      if (new Scanner(paramReader).findWithinHorizon(TZOFFSET_REGEXP.toPattern(), 0) != null)
      {
        paramReader.reset();
        str = fixInvalidUtcOffset$fixStringFromReader(paramReader);
      }
      else
      {
        str = null;
      }
    }
    else {
      str = fixInvalidUtcOffset$fixStringFromReader(paramReader);
    }
    if (str != null) {
      return new StringReader(str);
    }
    paramReader.reset();
    return paramReader;
  }
  
  public final void preProcess(Calendar paramCalendar)
  {
    r.f(paramCalendar, "calendar");
    paramCalendar = paramCalendar.getComponents().iterator();
    while (paramCalendar.hasNext())
    {
      Iterator localIterator = ((CalendarComponent)paramCalendar.next()).getProperties().iterator();
      while (localIterator.hasNext())
      {
        Property localProperty = (Property)localIterator.next();
        r.e(localProperty, "property");
        applyRules(localProperty);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.ICalPreprocessor
 * JD-Core Version:    0.7.0.1
 */