using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for MyCart
/// </summary>
public class MyCart
{
    public static void AddToCart(Product p)
    {
        List<Product> lst = new List<global::Product>();
        if (HttpContext.Current.Session["data"] != null)
        {
            lst = (List<Product>)HttpContext.Current.Session["data"];
        }
        lst.Add(p);//adding in class list
        HttpContext.Current.Session["data"] = lst;//returing to session
    }
        public static List<Product> GetCart()//returns to cart
    {
        List<Product> lst = new List<global::Product>();
        if (HttpContext.Current.Session["data"] != null)
        {
            lst = (List<Product>)HttpContext.Current.Session["data"];
        }
        return lst;
    }
    public static void CalculateTotalQty(out int Qty)
    {
        List<Product> lst = new List<global::Product>();
        if (HttpContext.Current.Session["data"] != null)
        {
            lst = (List<Product>)HttpContext.Current.Session["data"];
        }
        Qty = 0;
        foreach(Product p  in lst)
        {
            Qty += p.Qty;
        }
    }
    public static void RemoveItem(int ID)
    {
        List<Product> lst = new List<global::Product>();
        if (HttpContext.Current.Session["data"] != null)
        {
            lst = (List<Product>)HttpContext.Current.Session["data"];
        }
        for(int i=0;i<lst.Count;i++)
        { 
             if(lst[i].ProductID==ID)
            {
                lst.RemoveAt(i); //i:iteration row index
            }
            HttpContext.Current.Session["data"] = lst; //session Update(we gwt updated value in session)
        }
    }
} 