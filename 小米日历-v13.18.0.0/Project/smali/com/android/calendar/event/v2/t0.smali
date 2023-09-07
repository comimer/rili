.class public final synthetic Lcom/android/calendar/event/v2/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/b1;

.field public final synthetic b:Lw7/l;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/b1;Lw7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/t0;->a:Lcom/android/calendar/event/v2/b1;

    iput-object p2, p0, Lcom/android/calendar/event/v2/t0;->b:Lw7/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/v2/t0;->a:Lcom/android/calendar/event/v2/b1;

    iget-object v1, p0, Lcom/android/calendar/event/v2/t0;->b:Lw7/l;

    invoke-static {v0, v1}, Lcom/android/calendar/event/v2/b1;->K(Lcom/android/calendar/event/v2/b1;Lw7/l;)V

    return-void
.end method
