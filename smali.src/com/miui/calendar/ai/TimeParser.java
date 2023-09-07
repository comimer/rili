package com.miui.calendar.ai;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import androidx.annotation.Keep;
import b8.g;
import com.android.calendar.common.Utils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.w0;
import w7.l;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/ai/TimeParser;", "", "Landroid/content/Context;", "context", "", "text", "Lkotlin/Function1;", "Lcom/miui/calendar/ai/TimeParser$TextParseResult;", "Lkotlin/u;", "callback", "a", "<init>", "()V", "ParseData", "ParseResult", "TextParseResult", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class TimeParser
{
  public static final TimeParser a = new TimeParser();
  
  public static final void a(final Context paramContext, final String paramString, l<? super TextParseResult, u> paraml)
  {
    r.f(paramContext, "context");
    r.f(paramString, "text");
    r.f(paraml, "callback");
    if (!com.android.calendar.settings.j.e(paramContext))
    {
      paraml.invoke(null);
      return;
    }
    h.d(kotlinx.coroutines.l0.a(w0.c()), null, null, new SuspendLambda(paraml, paramContext)
    {
      int label;
      
      public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        return new 1(this.$callback, paramContext, paramString, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, c<? super u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject1 = kotlin.coroutines.intrinsics.a.d();
        int i = this.label;
        if (i != 0)
        {
          if (i == 1) {
            kotlin.j.b(paramAnonymousObject);
          } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        }
        else
        {
          kotlin.j.b(paramAnonymousObject);
          paramAnonymousObject = h.b(kotlinx.coroutines.l0.a(w0.a()), null, null, new SuspendLambda(paramContext, paramString)
          {
            int label;
            
            public final c<u> create(Object paramAnonymous2Object, c<?> paramAnonymous2c)
            {
              return new 1(this.$context, this.$text, paramAnonymous2c);
            }
            
            public final Object invoke(k0 paramAnonymous2k0, c<? super TimeParser.TextParseResult> paramAnonymous2c)
            {
              return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
            }
            
            public final Object invokeSuspend(Object paramAnonymous2Object)
            {
              Object localObject1 = kotlin.coroutines.intrinsics.a.d();
              int i = this.label;
              if ((i == 0) || (i == 1)) {}
              try
              {
                kotlin.j.b(paramAnonymous2Object);
                break label148;
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                kotlin.j.b(paramAnonymous2Object);
                paramAnonymous2Object = u1.d.c(this.$context, false, null, null, 14, null);
                Object localObject2 = com.miui.calendar.util.l0.a(this.$context, null);
                r.e(localObject2, "paramsMap");
                ((Map)localObject2).put("text", this.$text);
                ((Map)localObject2).put("time", String.valueOf(Utils.W()));
                u1.a locala = u1.d.f(null, 1, null);
                paramAnonymous2Object = locala.p(paramAnonymous2Object, (Map)localObject2);
                if (paramAnonymous2Object != null)
                {
                  this.label = 1;
                  localObject2 = paramAnonymous2Object.E(this);
                  paramAnonymous2Object = localObject2;
                  if (localObject2 == localObject1) {
                    return localObject1;
                  }
                  label148:
                  paramAnonymous2Object = (TimeParser.ParseResult)paramAnonymous2Object;
                  if (paramAnonymous2Object != null)
                  {
                    if (paramAnonymous2Object.getCode() != 0) {
                      return null;
                    }
                    if (paramAnonymous2Object.getData().getScheduleStartTime() == -1L) {
                      return null;
                    }
                    boolean bool = paramAnonymous2Object.getData().getAllDay();
                    long l1 = paramAnonymous2Object.getData().getScheduleStartTime();
                    long l2 = paramAnonymous2Object.getData().getScheduleEndTime();
                    i = paramAnonymous2Object.getData().getTextPosStart();
                    int j = paramAnonymous2Object.getData().getTextPosEnd();
                    if (i > 0) {
                      i = g.f(i, this.$text.length());
                    } else {
                      i = 0;
                    }
                    if (j >= i) {
                      j = Math.min(j, this.$text.length());
                    } else {
                      j = i;
                    }
                    long l3 = l2;
                    if (!bool)
                    {
                      l3 = l2;
                      if (l2 == -1L) {
                        l3 = com.android.calendar.event.j.h(l1);
                      }
                    }
                    paramAnonymous2Object = this.$text;
                    if (bool) {
                      bool = true;
                    } else {
                      bool = false;
                    }
                    paramAnonymous2Object = new TimeParser.TextParseResult(paramAnonymous2Object, i, j, l1, l3, bool);
                    return paramAnonymous2Object;
                  }
                }
              }
              catch (Exception paramAnonymous2Object)
              {
                label344:
                break label344;
              }
              return null;
            }
          }, 3, null);
          this.label = 1;
          Object localObject2 = paramAnonymousObject.E(this);
          paramAnonymousObject = localObject2;
          if (localObject2 == localObject1) {
            return localObject1;
          }
        }
        paramAnonymousObject = (TimeParser.TextParseResult)paramAnonymousObject;
        this.$callback.invoke(paramAnonymousObject);
        return u.a;
      }
    }, 3, null);
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/ai/TimeParser$ParseData;", "", "allDay", "", "scheduleStartTime", "", "scheduleEndTime", "textPosEnd", "", "textPosStart", "(ZJJII)V", "getAllDay", "()Z", "getScheduleEndTime", "()J", "getScheduleStartTime", "getTextPosEnd", "()I", "getTextPosStart", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public static final class ParseData
  {
    private final boolean allDay;
    private final long scheduleEndTime;
    private final long scheduleStartTime;
    private final int textPosEnd;
    private final int textPosStart;
    
    public ParseData(boolean paramBoolean, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
    {
      this.allDay = paramBoolean;
      this.scheduleStartTime = paramLong1;
      this.scheduleEndTime = paramLong2;
      this.textPosEnd = paramInt1;
      this.textPosStart = paramInt2;
    }
    
    public final boolean component1()
    {
      return this.allDay;
    }
    
    public final long component2()
    {
      return this.scheduleStartTime;
    }
    
    public final long component3()
    {
      return this.scheduleEndTime;
    }
    
    public final int component4()
    {
      return this.textPosEnd;
    }
    
    public final int component5()
    {
      return this.textPosStart;
    }
    
    public final ParseData copy(boolean paramBoolean, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
    {
      return new ParseData(paramBoolean, paramLong1, paramLong2, paramInt1, paramInt2);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof ParseData)) {
        return false;
      }
      paramObject = (ParseData)paramObject;
      if (this.allDay != paramObject.allDay) {
        return false;
      }
      if (this.scheduleStartTime != paramObject.scheduleStartTime) {
        return false;
      }
      if (this.scheduleEndTime != paramObject.scheduleEndTime) {
        return false;
      }
      if (this.textPosEnd != paramObject.textPosEnd) {
        return false;
      }
      return this.textPosStart == paramObject.textPosStart;
    }
    
    public final boolean getAllDay()
    {
      return this.allDay;
    }
    
    public final long getScheduleEndTime()
    {
      return this.scheduleEndTime;
    }
    
    public final long getScheduleStartTime()
    {
      return this.scheduleStartTime;
    }
    
    public final int getTextPosEnd()
    {
      return this.textPosEnd;
    }
    
    public final int getTextPosStart()
    {
      return this.textPosStart;
    }
    
    public int hashCode()
    {
      boolean bool1 = this.allDay;
      boolean bool2 = bool1;
      if (bool1) {
        bool2 = true;
      }
      return (((bool2 * true + Long.hashCode(this.scheduleStartTime)) * 31 + Long.hashCode(this.scheduleEndTime)) * 31 + Integer.hashCode(this.textPosEnd)) * 31 + Integer.hashCode(this.textPosStart);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ParseData(allDay=");
      localStringBuilder.append(this.allDay);
      localStringBuilder.append(", scheduleStartTime=");
      localStringBuilder.append(this.scheduleStartTime);
      localStringBuilder.append(", scheduleEndTime=");
      localStringBuilder.append(this.scheduleEndTime);
      localStringBuilder.append(", textPosEnd=");
      localStringBuilder.append(this.textPosEnd);
      localStringBuilder.append(", textPosStart=");
      localStringBuilder.append(this.textPosStart);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/ai/TimeParser$ParseResult;", "", "result", "", "code", "", "data", "Lcom/miui/calendar/ai/TimeParser$ParseData;", "(Ljava/lang/String;ILcom/miui/calendar/ai/TimeParser$ParseData;)V", "getCode", "()I", "getData", "()Lcom/miui/calendar/ai/TimeParser$ParseData;", "getResult", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public static final class ParseResult
  {
    private final int code;
    private final TimeParser.ParseData data;
    private final String result;
    
    public ParseResult(String paramString, int paramInt, TimeParser.ParseData paramParseData)
    {
      this.result = paramString;
      this.code = paramInt;
      this.data = paramParseData;
    }
    
    public final String component1()
    {
      return this.result;
    }
    
    public final int component2()
    {
      return this.code;
    }
    
    public final TimeParser.ParseData component3()
    {
      return this.data;
    }
    
    public final ParseResult copy(String paramString, int paramInt, TimeParser.ParseData paramParseData)
    {
      r.f(paramString, "result");
      r.f(paramParseData, "data");
      return new ParseResult(paramString, paramInt, paramParseData);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof ParseResult)) {
        return false;
      }
      paramObject = (ParseResult)paramObject;
      if (!r.a(this.result, paramObject.result)) {
        return false;
      }
      if (this.code != paramObject.code) {
        return false;
      }
      return r.a(this.data, paramObject.data);
    }
    
    public final int getCode()
    {
      return this.code;
    }
    
    public final TimeParser.ParseData getData()
    {
      return this.data;
    }
    
    public final String getResult()
    {
      return this.result;
    }
    
    public int hashCode()
    {
      return (this.result.hashCode() * 31 + Integer.hashCode(this.code)) * 31 + this.data.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ParseResult(result=");
      localStringBuilder.append(this.result);
      localStringBuilder.append(", code=");
      localStringBuilder.append(this.code);
      localStringBuilder.append(", data=");
      localStringBuilder.append(this.data);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/ai/TimeParser$TextParseResult;", "Landroid/os/Parcelable;", "", "describeContents", "Landroid/os/Parcel;", "it", "p1", "Lkotlin/u;", "writeToParcel", "", "component1", "component2", "component3", "", "component4", "component5", "", "component6", "text", "highLightStart", "highLightEnd", "startTime", "endTime", "isAllDay", "copy", "toString", "hashCode", "", "other", "equals", "Ljava/lang/String;", "getText", "()Ljava/lang/String;", "I", "getHighLightStart", "()I", "getHighLightEnd", "J", "getStartTime", "()J", "getEndTime", "Z", "()Z", "<init>", "(Ljava/lang/String;IIJJZ)V", "CREATOR", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  @Keep
  public static final class TextParseResult
    implements Parcelable
  {
    public static final a CREATOR = new a(null);
    private final long endTime;
    private final int highLightEnd;
    private final int highLightStart;
    private final boolean isAllDay;
    private final long startTime;
    private final String text;
    
    public TextParseResult(String paramString, int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean)
    {
      this.text = paramString;
      this.highLightStart = paramInt1;
      this.highLightEnd = paramInt2;
      this.startTime = paramLong1;
      this.endTime = paramLong2;
      this.isAllDay = paramBoolean;
    }
    
    public final String component1()
    {
      return this.text;
    }
    
    public final int component2()
    {
      return this.highLightStart;
    }
    
    public final int component3()
    {
      return this.highLightEnd;
    }
    
    public final long component4()
    {
      return this.startTime;
    }
    
    public final long component5()
    {
      return this.endTime;
    }
    
    public final boolean component6()
    {
      return this.isAllDay;
    }
    
    public final TextParseResult copy(String paramString, int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean)
    {
      r.f(paramString, "text");
      return new TextParseResult(paramString, paramInt1, paramInt2, paramLong1, paramLong2, paramBoolean);
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof TextParseResult)) {
        return false;
      }
      paramObject = (TextParseResult)paramObject;
      if (!r.a(this.text, paramObject.text)) {
        return false;
      }
      if (this.highLightStart != paramObject.highLightStart) {
        return false;
      }
      if (this.highLightEnd != paramObject.highLightEnd) {
        return false;
      }
      if (this.startTime != paramObject.startTime) {
        return false;
      }
      if (this.endTime != paramObject.endTime) {
        return false;
      }
      return this.isAllDay == paramObject.isAllDay;
    }
    
    public final long getEndTime()
    {
      return this.endTime;
    }
    
    public final int getHighLightEnd()
    {
      return this.highLightEnd;
    }
    
    public final int getHighLightStart()
    {
      return this.highLightStart;
    }
    
    public final long getStartTime()
    {
      return this.startTime;
    }
    
    public final String getText()
    {
      return this.text;
    }
    
    public int hashCode()
    {
      int i = this.text.hashCode();
      int j = Integer.hashCode(this.highLightStart);
      int k = Integer.hashCode(this.highLightEnd);
      int m = Long.hashCode(this.startTime);
      int n = Long.hashCode(this.endTime);
      int i1 = this.isAllDay;
      int i2 = i1;
      if (i1 != 0) {
        i2 = 1;
      }
      return ((((i * 31 + j) * 31 + k) * 31 + m) * 31 + n) * 31 + i2;
    }
    
    public final boolean isAllDay()
    {
      return this.isAllDay;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("TextParseResult(text=");
      localStringBuilder.append(this.text);
      localStringBuilder.append(", highLightStart=");
      localStringBuilder.append(this.highLightStart);
      localStringBuilder.append(", highLightEnd=");
      localStringBuilder.append(this.highLightEnd);
      localStringBuilder.append(", startTime=");
      localStringBuilder.append(this.startTime);
      localStringBuilder.append(", endTime=");
      localStringBuilder.append(this.endTime);
      localStringBuilder.append(", isAllDay=");
      localStringBuilder.append(this.isAllDay);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      r.f(paramParcel, "it");
      paramParcel.writeString(this.text);
      paramParcel.writeInt(this.highLightStart);
      paramParcel.writeInt(this.highLightEnd);
      paramParcel.writeLong(this.startTime);
      paramParcel.writeLong(this.endTime);
      paramParcel.writeInt(this.isAllDay);
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/ai/TimeParser$TextParseResult$a;", "Landroid/os/Parcelable$Creator;", "Lcom/miui/calendar/ai/TimeParser$TextParseResult;", "Landroid/os/Parcel;", "source", "a", "", "size", "", "b", "(I)[Lcom/miui/calendar/ai/TimeParser$TextParseResult;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    public static final class a
      implements Parcelable.Creator<TimeParser.TextParseResult>
    {
      public TimeParser.TextParseResult a(Parcel paramParcel)
      {
        if (paramParcel != null)
        {
          String str = paramParcel.readString();
          r.c(str);
          int i = paramParcel.readInt();
          int j = paramParcel.readInt();
          long l1 = paramParcel.readLong();
          long l2 = paramParcel.readLong();
          boolean bool;
          if (paramParcel.readInt() == 1) {
            bool = true;
          } else {
            bool = false;
          }
          paramParcel = new TimeParser.TextParseResult(str, i, j, l1, l2, bool);
        }
        else
        {
          paramParcel = null;
        }
        return paramParcel;
      }
      
      public TimeParser.TextParseResult[] b(int paramInt)
      {
        return new TimeParser.TextParseResult[0];
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.ai.TimeParser
 * JD-Core Version:    0.7.0.1
 */