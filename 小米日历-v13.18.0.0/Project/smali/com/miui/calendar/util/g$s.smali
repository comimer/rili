.class public Lcom/miui/calendar/util/g$s;
.super Lcom/miui/calendar/util/g$j;
.source "CalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J


# direct methods
.method public constructor <init>(JLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/Reminder;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/miui/calendar/util/g$j;-><init>()V

    .line 5
    iput-object p3, p0, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    .line 6
    iput-wide p1, p0, Lcom/miui/calendar/util/g$s;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/Reminder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/util/g$j;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/calendar/util/g$s;->a:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/miui/calendar/util/g$s;->b:J

    return-void
.end method
