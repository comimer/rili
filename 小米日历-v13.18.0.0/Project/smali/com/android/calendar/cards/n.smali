.class public final synthetic Lcom/android/calendar/cards/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/n;->a:Lcom/android/calendar/cards/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/cards/n;->a:Lcom/android/calendar/cards/b;

    invoke-virtual {v0}, Lcom/android/calendar/cards/b;->j()V

    return-void
.end method
