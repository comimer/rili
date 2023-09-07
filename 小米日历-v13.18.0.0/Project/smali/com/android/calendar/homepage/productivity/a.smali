.class public final synthetic Lcom/android/calendar/homepage/productivity/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/calendar/view/u;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/a;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IIII)Z
    .locals 6

    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/a;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->B(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method
