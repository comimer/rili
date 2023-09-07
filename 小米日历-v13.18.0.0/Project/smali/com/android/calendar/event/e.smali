.class public final synthetic Lcom/android/calendar/event/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/EditEventActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/EditEventActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/e;->a:Lcom/android/calendar/event/EditEventActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/e;->a:Lcom/android/calendar/event/EditEventActivity;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventActivity;->b0(Lcom/android/calendar/event/EditEventActivity;)V

    return-void
.end method
