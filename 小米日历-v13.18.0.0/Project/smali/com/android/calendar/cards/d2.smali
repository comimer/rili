.class public final synthetic Lcom/android/calendar/cards/d2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/e2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/e2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/d2;->a:Lcom/android/calendar/cards/e2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/cards/d2;->a:Lcom/android/calendar/cards/e2;

    invoke-virtual {v0}, Lcom/android/calendar/cards/e2;->h()V

    return-void
.end method
