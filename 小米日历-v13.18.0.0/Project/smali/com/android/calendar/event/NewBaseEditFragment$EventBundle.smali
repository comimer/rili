.class Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;
.super Ljava/lang/Object;
.source "NewBaseEditFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/NewBaseEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventBundle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field end:J

.field id:J

.field start:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->id:J

    .line 3
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->start:J

    .line 4
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->end:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;-><init>()V

    return-void
.end method
