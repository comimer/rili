.class public final synthetic Lcom/android/calendar/homepage/productivity/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/common/event/schema/Event;

.field public final synthetic b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/e;->a:Lcom/android/calendar/common/event/schema/Event;

    iput-object p2, p0, Lcom/android/calendar/homepage/productivity/e;->b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/e;->a:Lcom/android/calendar/common/event/schema/Event;

    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/e;->b:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    invoke-static {v0, v1, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V

    return-void
.end method
