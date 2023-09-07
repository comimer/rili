.class public Lcom/miui/calendar/web/CommonJSInterface$EditEventInfo;
.super Ljava/lang/Object;
.source "CommonJSInterface.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public allDay:Z

.field public description:Ljava/lang/String;

.field public endTime:J

.field public location:Ljava/lang/String;

.field public reminderMinute:I

.field public reminderState:I

.field public rrule:Ljava/lang/String;

.field public startTime:J

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public useMiuiCalendar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/calendar/web/CommonJSInterface$EditEventInfo;->useMiuiCalendar:Z

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/miui/calendar/web/CommonJSInterface$EditEventInfo;->reminderState:I

    .line 9
    .line 10
    return-void
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
