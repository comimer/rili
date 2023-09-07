.class public final synthetic Lcom/android/calendar/event/p1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/q1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/q1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/p1;->a:Lcom/android/calendar/event/q1;

    iput-object p2, p0, Lcom/android/calendar/event/p1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/p1;->a:Lcom/android/calendar/event/q1;

    iget-object v1, p0, Lcom/android/calendar/event/p1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/calendar/event/q1;->a(Lcom/android/calendar/event/q1;Ljava/lang/String;)V

    return-void
.end method
