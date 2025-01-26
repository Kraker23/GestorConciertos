﻿using System.ComponentModel;

namespace GestorConciertos.DM
{
    [DefaultProperty("Data")]
    public class DBData<T> : List<T>, IList<T>
    {
        public T Update(T oldItem, T newItem)
        {
            if (oldItem == null) this.Add(newItem);
            else if (oldItem.Equals(newItem)) return newItem;
            else
            {
                typeof(T).GetProperties().ToList().ForEach(p =>
                {
                    if (p.CanWrite)
                    {
                        var v = p.GetValue(newItem);
                        if (v != null) p.SetValue(oldItem, v);
                    }
                });
            }
            return newItem;
        }
        /*
        private List<T> data = new List<T>();

        
        public T this[int index] { get => data[index]; set => data[index] = value; }
        public int Count => data.Count;
        public bool IsReadOnly => false;
        public void Add(T item) => data.Add(item);
        public void Clear() => data.Clear();
        public bool Contains(T item) => data.Contains(item);
        public void CopyTo(T[] array, int arrayIndex) => data.CopyTo(array, arrayIndex);
        public IEnumerator<T> GetEnumerator() => data.GetEnumerator();
        public int IndexOf(T item) => data.IndexOf(item);
        public void Insert(int index, T item) => data.Insert(index, item);
        public bool Remove(T item) => data.Remove(item);
        public void RemoveAt(int index) => data.RemoveAt(index);
        IEnumerator IEnumerable.GetEnumerator() => data.GetEnumerator();
        */
    }
}
