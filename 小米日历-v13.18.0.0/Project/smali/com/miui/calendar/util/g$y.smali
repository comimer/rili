.class public Lcom/miui/calendar/util/g$y;
.super Lcom/miui/calendar/util/g$j;
.source "CalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "y"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/miui/calendar/util/g$y;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/miui/calendar/util/g$j;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/miui/calendar/util/g$y;->a:Z

    return-void
.end method
