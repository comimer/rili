.class public final synthetic Lcom/android/calendar/homepage/productivity/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/homepage/productivity/b;->b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/b;->b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->C(Landroid/content/Context;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V

    return-void
.end method
