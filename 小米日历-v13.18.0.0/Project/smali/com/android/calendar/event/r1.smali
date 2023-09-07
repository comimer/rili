.class public final synthetic Lcom/android/calendar/event/r1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw7/l;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/q1$p;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/q1$p;JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/r1;->a:Lcom/android/calendar/event/q1$p;

    iput-wide p2, p0, Lcom/android/calendar/event/r1;->b:J

    iput-wide p4, p0, Lcom/android/calendar/event/r1;->c:J

    iput-boolean p6, p0, Lcom/android/calendar/event/r1;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/calendar/event/r1;->a:Lcom/android/calendar/event/q1$p;

    iget-wide v1, p0, Lcom/android/calendar/event/r1;->b:J

    iget-wide v3, p0, Lcom/android/calendar/event/r1;->c:J

    iget-boolean v5, p0, Lcom/android/calendar/event/r1;->d:Z

    move-object v6, p1

    check-cast v6, Lcom/miui/calendar/ai/TimeParser$TextParseResult;

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/event/q1$p;->a(Lcom/android/calendar/event/q1$p;JJZLcom/miui/calendar/ai/TimeParser$TextParseResult;)Lkotlin/u;

    move-result-object p1

    return-object p1
.end method
