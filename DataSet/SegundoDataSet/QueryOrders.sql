
SELECT TOP (10000) [WorkOrderID]
      ,w.[ProductID]
	  ,p.[Name] as Product
	  ,ps.[Name] as Subcategory
	  ,pc.[Name] as Category
      ,[OrderQty]
      ,[StockedQty]
      ,[ScrappedQty]
      ,[StartDate]
      ,[EndDate]
      ,[DueDate]
      ,w.[ScrapReasonID]
	,sr.[Name] as  ScrapReason
  FROM [Curso].[Production].[WorkOrder] w 
  inner join  [Curso].[Production].ScrapReason sr on w.ScrapReasonID = sr.ScrapReasonID
  left join  [Curso].[Production].Product p on w.ProductID = p.ProductID
  inner join [Curso].[Production].ProductSubcategory ps on p.ProductSubcategoryID = ps.ProductSubcategoryID
  left join [Curso].[Production].ProductCategory pc on ps.ProductCategoryID = pc.ProductCategoryID

