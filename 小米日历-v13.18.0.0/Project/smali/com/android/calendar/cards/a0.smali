.class public final synthetic Lcom/android/calendar/cards/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/d0;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/d0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/a0;->a:Lcom/android/calendar/cards/d0;

    iput-object p2, p0, Lcom/android/calendar/cards/a0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/cards/a0;->a:Lcom/android/calendar/cards/d0;

    iget-object v1, p0, Lcom/android/calendar/cards/a0;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/cards/d0;->i(Lcom/android/calendar/cards/d0;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
