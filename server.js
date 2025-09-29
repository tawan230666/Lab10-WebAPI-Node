import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import { pool } from './db.js';

dotenv.config();
const app = express();

app.use(cors());
app.use(express.json());

// Health check
app.get('/', (_req, res) => {
  res.json({ ok: true, service: 'Lab10-WebAPI-Node', endpoints: ['/products'] });
});

// GET /products
app.get('/products', async (_req, res) => {
  try {
    const [rows] = await pool.query(
      'SELECT id, title, price, description, category, image FROM products ORDER BY id DESC'
    );
    res.json(rows);
  } catch (e) {
    res.status(500).json({ error: 'Server error', detail: e.message });
  }
});

// GET /products/:id
app.get('/products/:id', async (req, res) => {
  try {
    const [rows] = await pool.query(
      'SELECT id, title, price, description, category, image FROM products WHERE id = ?',
      [req.params.id]
    );
    if (rows.length === 0) return res.status(404).json({ error: 'Not found' });
    res.json(rows[0]);
  } catch (e) {
    res.status(500).json({ error: 'Server error', detail: e.message });
  }
});

// POST /products
app.post('/products', async (req, res) => {
  try {
    const { title, price, description, category, image } = req.body || {};
    if (!title || typeof price !== 'number') {
      return res.status(400).json({ error: 'title (string) and price (number) are required' });
    }
    const [result] = await pool.query(
      'INSERT INTO products (title, price, description, category, image) VALUES (?, ?, ?, ?, ?)',
      [title.trim(), price, description ?? null, category ?? null, image ?? null]
    );
    const [rows] = await pool.query(
      'SELECT id, title, price, description, category, image FROM products WHERE id = ?',
      [result.insertId]
    );
    res.status(201).json(rows[0]);
  } catch (e) {
    res.status(500).json({ error: 'Server error', detail: e.message });
  }
});

// PUT /products/:id
app.put('/products/:id', async (req, res) => {
  try {
    const { title, price, description, category, image } = req.body || {};
    if (!title || typeof price !== 'number') {
      return res.status(400).json({ error: 'title (string) and price (number) are required' });
    }
    const [result] = await pool.query(
      'UPDATE products SET title=?, price=?, description=?, category=?, image=? WHERE id=?',
      [title.trim(), price, description ?? null, category ?? null, image ?? null, req.params.id]
    );
    if (result.affectedRows === 0) return res.status(404).json({ error: 'Not found' });

    const [rows] = await pool.query(
      'SELECT id, title, price, description, category, image FROM products WHERE id = ?',
      [req.params.id]
    );
    res.json(rows[0]);
  } catch (e) {
    res.status(500).json({ error: 'Server error', detail: e.message });
  }
});

// DELETE /products/:id
app.delete('/products/:id', async (req, res) => {
  try {
    const [result] = await pool.query('DELETE FROM products WHERE id = ?', [req.params.id]);
    if (result.affectedRows === 0) return res.status(404).json({ error: 'Not found' });
    res.json({ ok: true, deletedId: Number(req.params.id) });
  } catch (e) {
    res.status(500).json({ error: 'Server error', detail: e.message });
  }
});

// 404 fallback
app.use((_req, res) => res.status(404).json({ error: 'Not found' }));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`API running: http://localhost:${PORT}`));
