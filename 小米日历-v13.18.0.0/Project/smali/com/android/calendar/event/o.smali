.class public final synthetic Lcom/android/calendar/event/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/EventInfoActivity;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/o;->a:Lcom/android/calendar/event/EventInfoActivity;

    iput-object p2, p0, Lcom/android/calendar/event/o;->b:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/o;->a:Lcom/android/calendar/event/EventInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/event/o;->b:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->e0(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/jvm/internal/Ref$IntRef;)V

    return-void
.end method
