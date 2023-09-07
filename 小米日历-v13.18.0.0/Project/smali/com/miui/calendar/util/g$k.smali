.class public Lcom/miui/calendar/util/g$k;
.super Lcom/miui/calendar/util/g$j;
.source "CalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/calendar/util/g$j;-><init>()V

    .line 6
    iput p1, p0, Lcom/miui/calendar/util/g$k;->a:I

    .line 7
    iput-boolean p2, p0, Lcom/miui/calendar/util/g$k;->b:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/miui/calendar/util/g$k;->c:Z

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/util/g$j;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/calendar/util/g$k;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/miui/calendar/util/g$k;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/miui/calendar/util/g$k;->c:Z

    return-void
.end method
