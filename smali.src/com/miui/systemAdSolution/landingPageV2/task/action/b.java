package com.miui.systemAdSolution.landingPageV2.task.action;

import android.os.Parcel;
import d6.d;

public class b
{
  public static Action a(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Type is ");
    localStringBuilder.append(i);
    d.b("ActionCreator", localStringBuilder.toString());
    if (i != 0)
    {
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            paramParcel = new StringBuilder();
            paramParcel.append("Unknown action type : ");
            paramParcel.append(i);
            d.b("ActionCreator", paramParcel.toString());
          }
          else
          {
            return new DownloadAction(paramParcel);
          }
        }
        else {
          return new H5Action(paramParcel);
        }
      }
      else {
        return new DeeplinkAction(paramParcel);
      }
    }
    else {
      d.b("ActionCreator", "Error : Action can't be instantiation");
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.landingPageV2.task.action.b
 * JD-Core Version:    0.7.0.1
 */