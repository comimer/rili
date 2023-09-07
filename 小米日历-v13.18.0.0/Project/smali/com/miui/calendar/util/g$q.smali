.class public Lcom/miui/calendar/util/g$q;
.super Lcom/miui/calendar/util/g$j;
.source "CalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/util/g$j;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/calendar/util/g$q;->a:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/miui/calendar/util/g$q;->b:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(ILjava/util/Calendar;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/miui/calendar/util/g$j;-><init>()V

    .line 5
    iput p1, p0, Lcom/miui/calendar/util/g$q;->a:I

    .line 6
    iput-object p2, p0, Lcom/miui/calendar/util/g$q;->b:Ljava/util/Calendar;

    return-void
.end method
