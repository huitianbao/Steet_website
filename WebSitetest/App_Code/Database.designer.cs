﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Database")]
public partial class DatabaseDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region 可扩展性方法定义
  partial void OnCreated();
  partial void InsertTable(Table instance);
  partial void UpdateTable(Table instance);
  partial void DeleteTable(Table instance);
  partial void InsertTableFlapper(TableFlapper instance);
  partial void UpdateTableFlapper(TableFlapper instance);
  partial void DeleteTableFlapper(TableFlapper instance);
  partial void InsertTableHotRolling(TableHotRolling instance);
  partial void UpdateTableHotRolling(TableHotRolling instance);
  partial void DeleteTableHotRolling(TableHotRolling instance);
  partial void InsertTableWareHouse(TableWareHouse instance);
  partial void UpdateTableWareHouse(TableWareHouse instance);
  partial void DeleteTableWareHouse(TableWareHouse instance);
  #endregion
	
	public DatabaseDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Table> Table
	{
		get
		{
			return this.GetTable<Table>();
		}
	}
	
	public System.Data.Linq.Table<TableFlapper> TableFlapper
	{
		get
		{
			return this.GetTable<TableFlapper>();
		}
	}
	
	public System.Data.Linq.Table<TableHotRolling> TableHotRolling
	{
		get
		{
			return this.GetTable<TableHotRolling>();
		}
	}
	
	public System.Data.Linq.Table<TableWareHouse> TableWareHouse
	{
		get
		{
			return this.GetTable<TableWareHouse>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.[Table]")]
public partial class Table : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _name;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    #endregion
	
	public Table()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NChar(10)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TableFlapper")]
public partial class TableFlapper : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _牌号;
	
	private string _种类;
	
	private string _牌号描述;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void On牌号Changing(string value);
    partial void On牌号Changed();
    partial void On种类Changing(string value);
    partial void On种类Changed();
    partial void On牌号描述Changing(string value);
    partial void On牌号描述Changed();
    #endregion
	
	public TableFlapper()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_牌号", DbType="NVarChar(50)")]
	public string 牌号
	{
		get
		{
			return this._牌号;
		}
		set
		{
			if ((this._牌号 != value))
			{
				this.On牌号Changing(value);
				this.SendPropertyChanging();
				this._牌号 = value;
				this.SendPropertyChanged("牌号");
				this.On牌号Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_种类", DbType="NChar(10)")]
	public string 种类
	{
		get
		{
			return this._种类;
		}
		set
		{
			if ((this._种类 != value))
			{
				this.On种类Changing(value);
				this.SendPropertyChanging();
				this._种类 = value;
				this.SendPropertyChanged("种类");
				this.On种类Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_牌号描述", DbType="NVarChar(MAX)")]
	public string 牌号描述
	{
		get
		{
			return this._牌号描述;
		}
		set
		{
			if ((this._牌号描述 != value))
			{
				this.On牌号描述Changing(value);
				this.SendPropertyChanging();
				this._牌号描述 = value;
				this.SendPropertyChanged("牌号描述");
				this.On牌号描述Changed();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TableHotRolling")]
public partial class TableHotRolling : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _品名;
	
	private string _规格;
	
	private string _产地_无限制_;
	
	private string _过磅价格;
	
	private string _理算价格;
	
	private string _地域_仓库;
	
	private string _牌号;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void On品名Changing(string value);
    partial void On品名Changed();
    partial void On规格Changing(string value);
    partial void On规格Changed();
    partial void On产地_无限制_Changing(string value);
    partial void On产地_无限制_Changed();
    partial void On过磅价格Changing(string value);
    partial void On过磅价格Changed();
    partial void On理算价格Changing(string value);
    partial void On理算价格Changed();
    partial void On地域_仓库Changing(string value);
    partial void On地域_仓库Changed();
    partial void On牌号Changing(string value);
    partial void On牌号Changed();
    #endregion
	
	public TableHotRolling()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_品名", DbType="NChar(10)")]
	public string 品名
	{
		get
		{
			return this._品名;
		}
		set
		{
			if ((this._品名 != value))
			{
				this.On品名Changing(value);
				this.SendPropertyChanging();
				this._品名 = value;
				this.SendPropertyChanged("品名");
				this.On品名Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_规格", DbType="NVarChar(50)")]
	public string 规格
	{
		get
		{
			return this._规格;
		}
		set
		{
			if ((this._规格 != value))
			{
				this.On规格Changing(value);
				this.SendPropertyChanging();
				this._规格 = value;
				this.SendPropertyChanged("规格");
				this.On规格Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[产地(无限制)]", Storage="_产地_无限制_", DbType="NVarChar(50)")]
	public string 产地_无限制_
	{
		get
		{
			return this._产地_无限制_;
		}
		set
		{
			if ((this._产地_无限制_ != value))
			{
				this.On产地_无限制_Changing(value);
				this.SendPropertyChanging();
				this._产地_无限制_ = value;
				this.SendPropertyChanged("产地_无限制_");
				this.On产地_无限制_Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_过磅价格", DbType="NChar(10)")]
	public string 过磅价格
	{
		get
		{
			return this._过磅价格;
		}
		set
		{
			if ((this._过磅价格 != value))
			{
				this.On过磅价格Changing(value);
				this.SendPropertyChanging();
				this._过磅价格 = value;
				this.SendPropertyChanged("过磅价格");
				this.On过磅价格Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_理算价格", DbType="NChar(10)")]
	public string 理算价格
	{
		get
		{
			return this._理算价格;
		}
		set
		{
			if ((this._理算价格 != value))
			{
				this.On理算价格Changing(value);
				this.SendPropertyChanging();
				this._理算价格 = value;
				this.SendPropertyChanged("理算价格");
				this.On理算价格Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[地域/仓库]", Storage="_地域_仓库", DbType="NVarChar(50)")]
	public string 地域_仓库
	{
		get
		{
			return this._地域_仓库;
		}
		set
		{
			if ((this._地域_仓库 != value))
			{
				this.On地域_仓库Changing(value);
				this.SendPropertyChanging();
				this._地域_仓库 = value;
				this.SendPropertyChanged("地域_仓库");
				this.On地域_仓库Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_牌号", DbType="NVarChar(50)")]
	public string 牌号
	{
		get
		{
			return this._牌号;
		}
		set
		{
			if ((this._牌号 != value))
			{
				this.On牌号Changing(value);
				this.SendPropertyChanging();
				this._牌号 = value;
				this.SendPropertyChanged("牌号");
				this.On牌号Changed();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TableWareHouse")]
public partial class TableWareHouse : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _仓库名称;
	
	private string _联系方式;
	
	private string _简称;
	
	private string _简码;
	
	private string _备注;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void On仓库名称Changing(string value);
    partial void On仓库名称Changed();
    partial void On联系方式Changing(string value);
    partial void On联系方式Changed();
    partial void On简称Changing(string value);
    partial void On简称Changed();
    partial void On简码Changing(string value);
    partial void On简码Changed();
    partial void On备注Changing(string value);
    partial void On备注Changed();
    #endregion
	
	public TableWareHouse()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_仓库名称", DbType="NVarChar(50)")]
	public string 仓库名称
	{
		get
		{
			return this._仓库名称;
		}
		set
		{
			if ((this._仓库名称 != value))
			{
				this.On仓库名称Changing(value);
				this.SendPropertyChanging();
				this._仓库名称 = value;
				this.SendPropertyChanged("仓库名称");
				this.On仓库名称Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_联系方式", DbType="NVarChar(50)")]
	public string 联系方式
	{
		get
		{
			return this._联系方式;
		}
		set
		{
			if ((this._联系方式 != value))
			{
				this.On联系方式Changing(value);
				this.SendPropertyChanging();
				this._联系方式 = value;
				this.SendPropertyChanged("联系方式");
				this.On联系方式Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_简称", DbType="NChar(10)")]
	public string 简称
	{
		get
		{
			return this._简称;
		}
		set
		{
			if ((this._简称 != value))
			{
				this.On简称Changing(value);
				this.SendPropertyChanging();
				this._简称 = value;
				this.SendPropertyChanged("简称");
				this.On简称Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_简码", DbType="NChar(10)")]
	public string 简码
	{
		get
		{
			return this._简码;
		}
		set
		{
			if ((this._简码 != value))
			{
				this.On简码Changing(value);
				this.SendPropertyChanging();
				this._简码 = value;
				this.SendPropertyChanged("简码");
				this.On简码Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_备注", DbType="NVarChar(MAX)")]
	public string 备注
	{
		get
		{
			return this._备注;
		}
		set
		{
			if ((this._备注 != value))
			{
				this.On备注Changing(value);
				this.SendPropertyChanging();
				this._备注 = value;
				this.SendPropertyChanged("备注");
				this.On备注Changed();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591