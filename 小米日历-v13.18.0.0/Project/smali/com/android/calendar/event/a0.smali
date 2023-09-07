.class public final synthetic Lcom/android/calendar/event/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/a0;->a:Lcom/android/calendar/event/EventInfoActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/a0;->a:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {v0}, Lcom/android/calendar/event/EventInfoActivity;->l0(Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method
