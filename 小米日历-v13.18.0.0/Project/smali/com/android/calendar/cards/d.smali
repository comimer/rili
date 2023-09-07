.class public final synthetic Lcom/android/calendar/cards/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/j;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/calendar/cards/j$b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/d;->a:Lcom/android/calendar/cards/j;

    iput-object p2, p0, Lcom/android/calendar/cards/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/calendar/cards/d;->c:Lcom/android/calendar/cards/j$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/cards/d;->a:Lcom/android/calendar/cards/j;

    iget-object v1, p0, Lcom/android/calendar/cards/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/cards/d;->c:Lcom/android/calendar/cards/j$b;

    invoke-static {v0, v1, v2, p1}, Lcom/android/calendar/cards/j;->j(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V

    return-void
.end method
