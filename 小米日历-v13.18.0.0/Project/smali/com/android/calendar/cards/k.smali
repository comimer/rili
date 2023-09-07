.class public final synthetic Lcom/android/calendar/cards/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/j;

.field public final synthetic b:Lcom/android/calendar/cards/j$b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/k;->a:Lcom/android/calendar/cards/j;

    iput-object p2, p0, Lcom/android/calendar/cards/k;->b:Lcom/android/calendar/cards/j$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/cards/k;->a:Lcom/android/calendar/cards/j;

    iget-object v1, p0, Lcom/android/calendar/cards/k;->b:Lcom/android/calendar/cards/j$b;

    invoke-static {v0, v1}, Lcom/android/calendar/cards/j$c;->n0(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V

    return-void
.end method
