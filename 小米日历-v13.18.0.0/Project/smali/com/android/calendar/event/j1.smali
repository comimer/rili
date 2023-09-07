.class public final synthetic Lcom/android/calendar/event/j1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/m1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/m1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/j1;->a:Lcom/android/calendar/event/m1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/j1;->a:Lcom/android/calendar/event/m1;

    invoke-static {v0}, Lcom/android/calendar/event/m1;->h0(Lcom/android/calendar/event/m1;)V

    return-void
.end method
